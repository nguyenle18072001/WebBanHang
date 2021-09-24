@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="index.html">Home</a> / <span>Liên hệ</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="beta-map">
		
		<div class="abs-fullwidth beta-map wow flipInX"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3919.1783057235166!2d106.6537974!3d10.7976518!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529342889be43%3A0xeba6d712468c7105!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEzDvSBU4buxIFRy4buNbmcgVFAuIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1svi!2s!4v1626613724435!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2>Góp ý</h2>
					<div class="space20">&nbsp;</div>
					<p>Mọi sự đóng góp từ khách hàng là nguồn động lực</br> cho công ti chúng tôi không ngừng phát triển và hoàn thiện </p>
					<div class="space20">&nbsp;</div>
					<form action="#" method="post" class="contact-form">	
						<div class="form-block">
							<input name="your-name" type="text" placeholder="Tên (bắt buộc)">
						</div>
						<div class="form-block">
							<input name="your-email" type="email" placeholder="Email">
						</div>
						<div class="form-block">
							<input name="your-subject" type="text" placeholder="Số điện thoại (bắt buộc)">
						</div>
						<div class="form-block">
							<textarea name="your-message" placeholder="Ý kiến (bắt buộc)"></textarea>
						</div>
						<div class="form-block">
							<a type="submit" class="beta-btn primary">Gửi phản hồi<i class="fa fa-chevron-right"></i></a>
						</div>
					</form>
				</div>
				<div class="col-sm-4">
					<h2>Thông tin liên lạc</h2>
					<div class="space20">&nbsp;</div>

					<h6 class="contact-title">Địa chỉ</h6>
					<p>
						436 CMT8,<br>
						phường 11, quận 3 <br>
						Thành phố Hồ CHí Minh
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">Yêu cầu kinh doanh</h6>
					<p>
						 Vui lòng liên hệ qua hotline 18008188<br>
						 Hoặc qua email
						<a href="mailto:biz@betadesign.com">nguyenlehoang011@gmail.com</a>
					</p>
					<div class="space20">&nbsp;</div>
					<h6 class="contact-title">Việc làm</h6>
					<p>Chúng tôi luôn tìm kiếm tài năng 
						<br>để gia nhập đội ngũ của chúng tôi<br>
						Liên hệ: 
						<a href="hr@betadesign.com">abc@gmail.com</a>
					</p>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection