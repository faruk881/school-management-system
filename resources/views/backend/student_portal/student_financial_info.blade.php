@extends('admin.admin_master')
@section('admin')
<div class="content-wrapper">
	<div class="container-full">		 
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
											<th>Payment Date</th> 
											<th>Fee Type</th>
											<th>Paid Amount</th>
											
				 
				 
										</tr>
									</thead>
									<tbody>
										@foreach($allData as $key => $value )
										@php
											// $fee = App\Models\FeeCategoryAmount::where('fee_category_id',$value['fee_category']['id'] )->where('class_id',$value['student_class']['id'])->first();
										@endphp
										<tr>
											<td>{{ $key+1 }}</td>
                                            <td>{{ $value->date }}</td>
											<td> {{ $value['fee_category']['name'] }} </td>	<!--Fee Type -->

                                            <td>{{ $value['amount'] }}</td>
                                          
											
										</tr>
										@endforeach
									</tbody>
									<tfoot></tfoot>
					  			</table>
							</div> <!-- End of table-responsive -->
						</div> <!-- End of box-body -->
			 		</div> <!-- End of box -->
				</div> <!-- End of col-12 -->
		  	</div> <!-- End of row -->
              
            <div class="row">
				<div class="col-12 text-right">
					{{-- <p class="lead"><b>Payment Due</b><span class="text-danger"> 14/08/2018 </span></p> --}}

					<div>
						<p><strong> Registragion Fee Paid:</strong> {{ $reg_fee_paid }} | <strong>Due:</strong> </p>
						<p><strong>Total Monthly Fee Paid:</strong> {{ $monthly_fee_paid }} | <strong>Due:</strong></p>
						<p><strong>Total Exam Fee Paid:</strong> {{ $exam_fee_paid }} | <strong>Due:</strong> </p>
					</div>
					<div class="total-payment">
						<h3><b>Total Paid :</b> {{ $total_paid }}</h3><br>
						<h3><b>Total Due :</b> {{ $discount }}</h3>
					</div>

				</div> <!-- /.col -->
			</div> <!-- /.row -->

		</section> <!-- End of content -->	  
	</div><!-- End of container full -->
</div> <!-- End of content Wrapper -->
@endsection
