package unq.tpi.persistencia.performanceEj.daos

import java.util.List
import unq.tpi.persistencia.performanceEj.model.Department
import unq.tpi.persistencia.util.SessionManager

class DepartmentDAO {

	def getByName(String name) {
		val session = SessionManager.getSession()
		session.createQuery("from Department where name = :name")
				.setParameter("name", name).uniqueResult() as Department
	}

	def getByCode(String num) {
		val session = SessionManager.getSession()
		session.get(Department, num) as Department
	}

	def getByCodeAndEmployees(String num){
		val session = SessionManager.getSession()
		val query =session.createQuery("from Department dep join fetch dep.employees emp join fetch emp.salaries join fetch emp.titles where dep.code = :n ")
		query.setParameter("n", num);
		query.uniqueResult as Department
	}

	def getAll() {
		val session = SessionManager.getSession()
		session.createCriteria(Department).list() as List<Department>
	}
}
