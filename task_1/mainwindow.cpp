#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
#include <QPropertyAnimation>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);
	label_welcome = new QLabel();
	label_welcome->setText("Welcome");

	w_main = new QWidget(this);
	layout_main = new QVBoxLayout();

	w_main->setLayout(layout_main);

	setCentralWidget(w_main);
	layout_main->setAlignment(Qt::AlignCenter);

	w_login = new QWidget();

	layout_main->addWidget(w_login);

	w_login->setFixedSize(200, 200);
	w_login->setStyleSheet("background:green; border: 1px solid black; border-radius: 10px;");

	layout_login = new QVBoxLayout(w_login);

	text_field_login = new QLineEdit();
	text_field_password = new QLineEdit();
	btn_login = new QPushButton();

	text_field_login->setPlaceholderText("Login");
	text_field_login->setMaxLength(10);

	text_field_password->setPlaceholderText("Password");
	text_field_login->setMaxLength(10);
	text_field_password->setEchoMode(QLineEdit::Password);

	btn_login->setText("Login");

	layout_login->addWidget(text_field_login);
	layout_login->addWidget(text_field_password);
	layout_login->addWidget(btn_login);

	w_login->setLayout(layout_login);

	connect(btn_login, SIGNAL(pressed()), this, SLOT(pressed_login()));
	connect(btn_login, SIGNAL(released()), this, SLOT(released_login()));
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::pressed_login()
{
	if (text_field_login->text() == login && text_field_password->text() == password)
	{
		layout_login->setEnabled(false);
		w_login->setVisible(false);
		layout_main->addWidget(label_welcome);
	}
	else
	{
		QPropertyAnimation *anim = new QPropertyAnimation(w_login, "pos", this);
		anim->setDuration(100);
		anim->setStartValue(QPoint(145, 130));
		anim->setKeyValueAt(0.5, QPoint(155, 130));
		anim->setEndValue(QPoint(150, 130));
		anim->start();
	}
}

void MainWindow::released_login()
{
//	btn_login->setStyle("background:green;");
}


