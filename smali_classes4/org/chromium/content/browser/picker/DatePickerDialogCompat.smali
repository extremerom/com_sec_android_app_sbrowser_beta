.class Lorg/chromium/content/browser/picker/DatePickerDialogCompat;
.super Landroid/app/DatePickerDialog;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object p2, p0, Lorg/chromium/content/browser/picker/DatePickerDialogCompat;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/picker/DatePickerDialogCompat;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p0, p0, Lorg/chromium/content/browser/picker/DatePickerDialogCompat;->mCallBack:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    const-string p1, ""

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
