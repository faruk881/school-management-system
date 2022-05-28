<?php

namespace App\Http\Controllers\Backend\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AccountStudentFee;
use App\Models\SchoolSubject;
use App\Models\StudentClass; 
use App\Models\AssignSubject;
use App\Models\AssignTeacherSubject;
use App\Models\StudentShift;
use App\Models\StudentGroup;
use App\Models\StudentYear;
use App\Models\AssignStudent;
use App\Models\StudentAttendance;
use App\Models\User;
use App\Models\Designation;
use App\Models\DiscountStudent;
use App\Models\FeeCategoryAmount;
use Illuminate\Support\Facades\Auth;
use PDF;


class StudentFinancialInfo extends Controller
{
    public function FinancialInfo() {
        $data['allData'] = AccountStudentFee::where('student_id',Auth::user()->id)->orderBy('date','desc')->get();

        $monthly_fee_paid = Auth::user()->total_monthly_fee_paid;
        $exam_fee_paid = Auth::user()->total_exam_fee_paid;
        $reg_fee_paid = Auth::user()->total_registration_fee_paid;

        $data['monthly_fee_paid'] = $monthly_fee_paid;
        $data['exam_fee_paid'] = $exam_fee_paid;
        $data['reg_fee_paid'] = $reg_fee_paid;


        //Monthly Fee Code
        // $discount_student = DiscountStudent::where('assign_student_id',Auth::user()->id)->get();
        $student_info = AssignStudent::with('discount')->with('student_class')->where('student_id',Auth::user()->id)->first();
        $discount = $student_info->discount->discount;
        $class = $student_info->student_class->id;

            // 1 = Registration fee
			// 2 = Monthly fee
			// 3 = Exam Fee 

        $reg_date = strtotime(Auth::user()->join_date);
        $current_date = strtotime(date('Y-m-d',time()));
        $months = 1;
        while(($reg_date = strtotime('+1 MONTH', $reg_date)) <= $current_date) {
            $months++;
        }



        $all_reg_fee = FeeCategoryAmount::where('class_id',$class)->where('fee_category_id',1)->first();
        $reg_fee = $all_reg_fee->amount;
        $reg_fee_due = $reg_fee - $reg_fee_paid;

        $all_monthly_fee = FeeCategoryAmount::where('class_id',$class)->where('fee_category_id',2)->first();
        $monthly_fee = $all_monthly_fee->amount;
        $discounted_monthly_fee = $discount/100*$monthly_fee;
        $total_monthly_fee = $discounted_monthly_fee*$months;
        $monthly_fee_due = $total_monthly_fee - $monthly_fee_paid;

        $all_exam_fee = FeeCategoryAmount::where('class_id',$class)->where('fee_category_id',3)->first();
        $exam_fee = $all_exam_fee->amount;
        $exam_fee_due = $exam_fee - $exam_fee_paid;

        

        $total_due = $exam_fee_due + $monthly_fee_due + $reg_fee_due;



        

        $data['reg_fee'] = $reg_fee;
        $data['reg_fee_due'] = $reg_fee_due;
        
        $data['monthly_fee'] = $monthly_fee;
        $data['monthly_fee_due'] = $monthly_fee_due;
        $data['total_monthly_fee'] = $total_monthly_fee;
        
        $data['exam_fee'] = $exam_fee;
        $data['exam_fee_due'] = $exam_fee_due;
        
        $data['discounted_monthly_fee'] = $discounted_monthly_fee;

        $data['total_due'] = $total_due;
        $data['discount'] = $discount;
      




        $data['total_paid'] = $monthly_fee_paid + $exam_fee_paid + $reg_fee_paid;
        return view('backend.student_portal.student_financial_info',$data);
    }


}
