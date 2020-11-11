package homework3final;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProductDao {
	
	public void saveProduct(Product product) {
		Transaction transaction = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			// start a transaction
			transaction = session.beginTransaction();

			session.save(product);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}

	/**
	 * Update User
	 * @param user
	 */
	public void updateProduct(Product product) {
		Transaction transaction = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			// start a transaction
			transaction = session.beginTransaction();
			// save the student object
			session.update(product);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
	}


	/**
	 * Get User By ID
	 * @param id
	 * @return
	 */
	public Product getProduct(int pbar) {

		Transaction transaction = null;
		Product product = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try  {
			// start a transaction
			transaction = session.beginTransaction();

			product = session.get(Product.class, pbar);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return product;
	}
	
	/**
	 * Get all Users
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {

		Transaction transaction = null;
		List<Product> listOfProduct = null;
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			// start a transaction
			transaction = session.beginTransaction();
			
			listOfProduct = session.createQuery("from Product").getResultList();
			
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return listOfProduct;
	}
}