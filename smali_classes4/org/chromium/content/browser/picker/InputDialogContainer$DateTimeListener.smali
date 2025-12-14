.class Lorg/chromium/content/browser/picker/InputDialogContainer$DateTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/picker/DateTimePickerDialog$OnDateTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateTimeListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateTimeListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateTimeListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    iget v2, v0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateTimeListener;->mDialogType:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, v1

    move v1, v2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->setFieldDateTimeValue(IIIIIIIII)V

    return-void
.end method
