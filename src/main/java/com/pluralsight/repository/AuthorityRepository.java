package com.pluralsight.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pluralsight.model.Authority;

@Repository("authorityReposiotry")
public interface AuthorityRepository extends JpaRepository<Authority, Long>{}
