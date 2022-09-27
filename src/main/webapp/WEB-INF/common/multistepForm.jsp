<%--
  Created by IntelliJ IDEA.
  User: gq
  Date: 27/09/2022
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
  <link href="../../assets/css/multistep.css" rel="stylesheet" />
</head>
<body>
<div class="multisteps-form">
  <!--progress bar-->
  <div class="row">
    <div class="col-12 col-lg-8 ml-auto mr-auto mb-4">
      <div class="multisteps-form__progress">
        <button class="multisteps-form__progress-btn js-active" type="button" title="User Info">User Info</button>
        <button class="multisteps-form__progress-btn" type="button" title="Address">Address</button>
        <button class="multisteps-form__progress-btn" type="button" title="Order Info">Order Info</button>
        <button class="multisteps-form__progress-btn" type="button" title="Comments">Comments        </button>
      </div>
    </div>
  </div>
  <!--form panels-->
  <div class="row">
    <div class="col-12 col-lg-8 m-auto">
      <form class="multisteps-form__form">
        <!--single form panel-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white js-active" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Your User Info</h3>
          <div class="multisteps-form__content">
            <div class="form-row mt-4">
              <div class="col-12 col-sm-6">
                <input class="multisteps-form__input form-control" type="text" placeholder="First Name"/>
              </div>
              <div class="col-12 col-sm-6 mt-4 mt-sm-0">
                <input class="multisteps-form__input form-control" type="text" placeholder="Last Name"/>
              </div>
            </div>
            <div class="form-row mt-4">
              <div class="col-12 col-sm-6">
                <input class="multisteps-form__input form-control" type="text" placeholder="Login"/>
              </div>
              <div class="col-12 col-sm-6 mt-4 mt-sm-0">
                <input class="multisteps-form__input form-control" type="email" placeholder="Email"/>
              </div>
            </div>
            <div class="form-row mt-4">
              <div class="col-12 col-sm-6">
                <input class="multisteps-form__input form-control" type="password" placeholder="Password"/>
              </div>
              <div class="col-12 col-sm-6 mt-4 mt-sm-0">
                <input class="multisteps-form__input form-control" type="password" placeholder="Repeat Password"/>
              </div>
            </div>
            <div class="button-row d-flex mt-4">
              <button class="btn btn-primary ml-auto js-btn-next" type="button" title="Next">Next</button>
            </div>
          </div>
        </div>
        <!--single form panel-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Your Address</h3>
          <div class="multisteps-form__content">
            <div class="form-row mt-4">
              <div class="col">
                <input class="multisteps-form__input form-control" type="text" placeholder="Address 1"/>
              </div>
            </div>
            <div class="form-row mt-4">
              <div class="col">
                <input class="multisteps-form__input form-control" type="text" placeholder="Address 2"/>
              </div>
            </div>
            <div class="form-row mt-4">
              <div class="col-12 col-sm-6">
                <input class="multisteps-form__input form-control" type="text" placeholder="City"/>
              </div>
              <div class="col-6 col-sm-3 mt-4 mt-sm-0">
                <select class="multisteps-form__select form-control">
                  <option selected="selected">State...</option>
                  <option>...</option>
                </select>
              </div>
              <div class="col-6 col-sm-3 mt-4 mt-sm-0">
                <input class="multisteps-form__input form-control" type="text" placeholder="Zip"/>
              </div>
            </div>
            <div class="button-row d-flex mt-4">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Prev</button>
              <button class="btn btn-primary ml-auto js-btn-next" type="button" title="Next">Next</button>
            </div>
          </div>
        </div>
        <!--single form panel-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Your Order Info</h3>
          <div class="multisteps-form__content">
            <div class="row">
              <div class="col-12 col-md-6 mt-4">
                <div class="card shadow-sm">
                  <div class="card-body">
                    <h5 class="card-title">Item Title</h5>
                    <p class="card-text">Small and nice item description</p><a class="btn btn-primary" href="#" title="Item Link">Item Link</a>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-6 mt-4">
                <div class="card shadow-sm">
                  <div class="card-body">
                    <h5 class="card-title">Item Title</h5>
                    <p class="card-text">Small and nice item description</p><a class="btn btn-primary" href="#" title="Item Link">Item Link</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="button-row d-flex mt-4 col-12">
                <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Prev</button>
                <button class="btn btn-primary ml-auto js-btn-next" type="button" title="Next">Next</button>
              </div>
            </div>
          </div>
        </div>
        <!--single form panel-->
        <div class="multisteps-form__panel shadow p-4 rounded bg-white" data-animation="scaleIn">
          <h3 class="multisteps-form__title">Additional Comments</h3>
          <div class="multisteps-form__content">
            <div class="form-row mt-4">
              <textarea class="multisteps-form__textarea form-control" placeholder="Additional Comments and Requirements"></textarea>
            </div>
            <div class="button-row d-flex mt-4">
              <button class="btn btn-primary js-btn-prev" type="button" title="Prev">Prev</button>
              <button class="btn btn-success ml-auto" type="button" title="Send">Send</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<script src="../../assets/js/plugins/multistep.js"></script>
</body>
</html>
