.class Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/picker/TwoFieldDatePickerDialog$OnValueSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonthOrWeekListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onValueSet(II)V
    .locals 10

    iget v1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;->mDialogType:I

    const/16 v0, 0xb

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->setFieldDateTimeValue(IIIIIIIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$MonthOrWeekListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->setFieldDateTimeValue(IIIIIIIII)V

    :goto_0
    return-void
.end method
