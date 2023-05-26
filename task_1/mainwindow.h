#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QPushButton>
#include <QLineEdit>
#include <QVBoxLayout>
#include <QWidget>
#include <QPainter>
#include <QLabel>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:
	explicit MainWindow(QWidget *parent = 0);
	~MainWindow();

public slots:
	void	pressed_login();
	void	released_login();


private:
	Ui::MainWindow*	ui;

	QString			login = "Login";
	QString			password = "password";

	QPushButton*	btn_login;
	QLineEdit*		text_field_login;
	QLineEdit*		text_field_password;
	QLabel*			label_welcome;
	QVBoxLayout*	layout_login;
	QVBoxLayout*	layout_main;
	QWidget*		w_main;
	QWidget*		w_login;
};

#endif // MAINWINDOW_H
