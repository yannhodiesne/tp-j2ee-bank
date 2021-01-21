package fr.yannhodiesne.bank.repository;

import fr.yannhodiesne.bank.model.Operations;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OperationsRepository extends JpaRepository<Operations, Integer> {
}
