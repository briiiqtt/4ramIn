package com.yedam.saramin.adoptions.service;

import java.util.List;

import com.yedam.saramin.adoptions.Adoption;

public interface AdoptionService {
	List<Adoption> selectAdoptionAll();
	Adoption selectAdoption(Adoption adt);
	int updateAdoption(Adoption adt);
	int insertAdoption(Adoption adt);
	int deleteAdoption(Adoption adt);
}