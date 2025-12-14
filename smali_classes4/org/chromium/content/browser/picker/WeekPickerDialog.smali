.class public Lorg/chromium/content/browser/picker/WeekPickerDialog;
.super Lorg/chromium/content/browser/picker/TwoFieldDatePickerDialog;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/chromium/content/browser/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/chromium/content/browser/picker/TwoFieldDatePickerDialog;-><init>(Landroid/content/Context;ILorg/chromium/content/browser/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V

    sget p1, Lorg/chromium/content/R$string;->week_picker_dialog_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V
    .locals 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/content/browser/picker/WeekPickerDialog;-><init>(Landroid/content/Context;ILorg/chromium/content/browser/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V

    return-void
.end method


# virtual methods
.method public createPicker(Landroid/content/Context;DD)Lorg/chromium/content/browser/picker/TwoFieldDatePicker;
    .locals 6

    new-instance p0, Lorg/chromium/content/browser/picker/WeekPicker;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/picker/WeekPicker;-><init>(Landroid/content/Context;DD)V

    return-object p0
.end method
