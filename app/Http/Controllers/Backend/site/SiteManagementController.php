<?php

namespace App\Http\Controllers\Backend\site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SchoolEvent;
use App\Models\SchoolNotice;
use Illuminate\Support\Carbon;

class SiteManagementController extends Controller
{
    //---------------------------All functions for event--------------------------//
    public function ViewEvent() {

        $event['eventDetails'] = SchoolEvent::with(['updated_by'])->with(['created_by'])->get();
        return view('backend.event.view_event',$event);
    }

    public function AddEvent() {

        return view('backend.event.add_event');
    }

    public function StoreEvent(Request $request) {

        $school_event = new SchoolEvent();
        $school_event->event_name = $request->event_name;
        $school_event->event_date = $request->event_date;
        $school_event->event_time = $request->event_time;
        if ($request->file('image')) {
    		$file = $request->file('image');
    		$filename = date('YmdHi').$file->getClientOriginalName();
    		$file->move(public_path('upload/school_event'),$filename);
    		$school_event['event_photo'] = $filename;
    	}
        $school_event->event_description = $request->event_description;
        $school_event->created_by_user_id = auth()->user()->id;
      

        $school_event->save();

        $notification = array(
    		'message' => 'School details seccessfully updated',
    		'alert-type' => 'success'
    	);

        $event['eventDetails'] = SchoolEvent::all();
    
        // return view('backend.event.view_event');
        return redirect()->route('site.event.view');
    } //End of StoreEvent


    public function EditEvent($id) {

        $data['eventData'] = SchoolEvent::where('id',$id)->get();


        return view('backend.event.edit_event',$data);
    } //End of EditEvent

    public function UpdateEvent(Request $request, $id) {
        
        
        $school_event = SchoolEvent::find($id);
        $school_event->event_name = $request->event_name;
        $school_event->event_date = $request->event_date;
        $school_event->event_time = $request->event_time;
        if ($request->file('image')) {
    		$file = $request->file('image');
    		$filename = date('YmdHi').$file->getClientOriginalName();
    		$file->move(public_path('upload/school_event'),$filename);
    		$school_event['event_photo'] = $filename;
    	}
        $school_event->event_description = $request->event_description;
        $school_event->updated_by_user_id = auth()->user()->id;
      

        $school_event->save();

        $notification = array(
    		'message' => 'School details seccessfully updated',
    		'alert-type' => 'success'
    	);



        return redirect()->route('site.event.view');
    } //End of update Event

    public function DeleteEvent($id) {
        $event = SchoolEvent::find($id);
        $event->delete();

        return redirect()->route('site.event.view');
    } //End of delete event
//----------------------------------------------end of notice functions//


    //---------------------------All functions for notice--------------------------//
    public function ViewNotice() {

        $notice['noticeDetails'] = SchoolNotice::with(['updated_by'])->with(['created_by'])->get();
        return view('backend.notice.view_notice',$notice);
    }

    public function AddNotice() {

        return view('backend.notice.add_notice');
    }

    public function StoreNotice(Request $request) {

        $school_notice = new SchoolNotice();
        $school_notice->notice_name = $request->notice_name;
        $school_notice->notice_date = Carbon::now()->format('y-m-d');
        $school_notice->notice_description = $request->notice_description;
        $school_notice->created_by_user_id = auth()->user()->id;
      

        $school_notice->save();

        $notification = array(
    		'message' => 'School details seccessfully updated',
    		'alert-type' => 'success'
    	);

        $notice['eventDetails'] = Schoolnotice::all();
    
        // return view('backend.event.view_event');
        return redirect()->route('site.notice.view');
    } //End of StoreEvent


    public function EditNotice($id) {

        $data['noticeData'] = SchoolNotice::where('id',$id)->get();


        return view('backend.notice.edit_notice',$data);
    } //End of EditEvent

    public function UpdateNotice(Request $request, $id) {
        
        
        $school_notice = SchoolNotice::find($id);
        $school_notice->notice_name = $request->notice_name;
        // $school_notice->notice_date = $request->notice_date;
       
        $school_notice->notice_description = $request->notice_description;
        $school_notice->updated_by_user_id = auth()->user()->id;
      

        $school_notice->save();

        $notification = array(
    		'message' => 'School details seccessfully updated',
    		'alert-type' => 'success'
    	);



        return redirect()->route('site.notice.view');
    } //End of update Event

    public function DeleteNotice($id) {
        $notice = SchoolNotice::find($id);
        $notice->delete();

        return redirect()->route('site.notice.view');
    } //End of delete event
//----------------------------------------------end of notice functions//
    //function to pass data to website//
    public function EventDetails($id){
        $event['singleEvent'] = SchoolEvent::where('id',$id)->get();
        return view('frontend.event_details',$event);
    } //end of event details function  
    public function NoticeDetails($id){
        $notice['singleNotice'] = SchoolNotice::with('created_by')->where('id',$id)->get();
        return view('frontend.notice_details',$notice);
    } //end of event details function  
}
