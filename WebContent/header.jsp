<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-xl navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">락락한상</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">소개 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">주문하기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">이달의 식단</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">연락하기</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          게시판
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="GetBoardListCtrl">공지사항</a>
          <a class="dropdown-item" href="#">구매후기</a>
          <a class="dropdown-item" href="#">FAQ</a>
        </div>
      </li>
 
    </ul>
    <a class="btn btn-primary" href="#" role="button">로그인</a>
    <a class="btn btn-primary" href="#" role="button">회원가입</a>
   </div>
</nav>