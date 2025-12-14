.class Lorg/chromium/content/browser/picker/InputDialogContainer$DateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$DateListener;->mDialogType:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->setFieldDateTimeValue(IIIIIIIII)V

    return-void
.end method
