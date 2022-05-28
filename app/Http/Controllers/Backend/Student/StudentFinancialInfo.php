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
        $discount_student = DiscountStudent::where('assign_student_id',Auth::user()->id)->first();
        $discount = $discount_student->discount;
        $discountedfee = $discount/100*
        $data['discount'] = $discount;




        $data['total_paid'] = $monthly_fee_paid + $exam_fee_paid + $reg_fee_paid;
        return view('backend.student_portal.student_financial_info',$data);
    }


}
