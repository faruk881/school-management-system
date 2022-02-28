@extends('admin.admin_master')
@section('admin')


 <div class="content-wrapper">
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			  
			 

			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Student Fee List </h3>
	{{-- <a href="{{ route('student.fee.add') }}" style="float: right;" class="btn btn-rounded btn-success mb-5"> Add / Edit Student Fee</a>			   --}}

				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
			<tr>
				<th width="5%">SL</th>  
				<th>ID No</th> 
				<th>Name </th>
				<th>Year</th>
				<th>Class </th>
				<th>Fee Type</th>
				<th>Total Paid taka</th>
				<th>Total Due</th>
				<th>Paid Amount In Taka</th>
				<th>Paid Date</th> 
				 
				 
			</tr>
		</thead>
		<tbody>
			@foreach($allData as $key => $value )
			<tr>
				<td>{{ $key+1 }}</td>
				<td> {{ $value['student']['id_no'] }}</td>	
				<td> {{ $value['student']['name'] }}</td>	
				<td> {{ $value['student_year']['name'] }}</td>	
				<td> {{ $value['student_class']['name'] }}</td>	
				<td> {{ $value['fee_category']['name'] }} </td>	

				{{-- 1 = Registration Fee id --}}
				{{-- 2 = Monthly Fee id --}}
				{{-- 3 = Exam fee id --}}

				@if ($value['fee_category']['id'] == 1)
				<td> {{ $value['student']['total_registration_fee_paid'] }} </td>						
				@endif
				@if ($value['fee_category']['id'] == 2)
				<td> {{ $value['student']['total_monthly_fee_paid'] }} </td>						
				@endif
				@if ($value['fee_category']['id'] == 3)
				<td> {{ $value['student']['total_exam_fee_paid'] }} </td>						
				@endif
				@php

					if ($value['fee_category']['id'] == 2) {
						// $regDate = strtotime($value['student']['join_date']);
						// // $date2 = strtotime('2022-03-01');
						// $date2 = strtotime(date('Y-m-d', time()));
						// $months = 1;

						// while (($regDate = strtotime('+1 MONTH', $regDate)) <= $date2)
						// 	$months++;

						// echo '<td>'.$months.'</td>';
						// // echo '<td> '.strtotime($regDate).' </td>';
						
						//Please add Monthly total due
					}

					if ($value['fee_category']['id'] == 1) {
						// echo '<td>'.$value['student']['total_registration_fee_paid'].'</td>';
						//Please add Total Registration Due
					}

					if ($value['fee_category']['id'] == 3) {
						// echo '<td>'.$value['student']['total_exam_fee_paid'].'</td>';	
						// foreach ($totalExam as $exam) {
						// 	echo '<td>'.$totalExam.'</td>';	
						// 	# code...
						// }
						
						//Please add exam fee due
					}
					
				@endphp
				{{-- <td>{{ date('d M y',strtotime($value['student']['join_date'])) }}</td> --}}
					
				<td> {{ $value->amount }}</td>
				<td> {{ date('d M Y', strtotime($value->date))  }}</td>
				 		  
			</tr>
			@endforeach
							 
						</tbody>
						<tfoot>
							 
						</tfoot>
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			       
			</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  </div>





@endsection
