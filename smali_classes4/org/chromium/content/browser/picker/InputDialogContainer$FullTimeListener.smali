.class Lorg/chromium/content/browser/picker/InputDialogContainer$FullTimeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/picker/MultiFieldTimePickerDialog$OnMultiFieldTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/picker/InputDialogContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullTimeListener"
.end annotation


# instance fields
.field private final mDialogType:I

.field final synthetic this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/picker/InputDialogContainer;I)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$FullTimeListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$FullTimeListener;->mDialogType:I

    return-void
.end method


# virtual methods
.method public onTimeSet(IIII)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$FullTimeListener;->this$0:Lorg/chromium/content/browser/picker/InputDialogContainer;

    iget v1, p0, Lorg/chromium/content/browser/picker/InputDialogContainer$FullTimeListener;->mDialogType:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Lorg/chromium/content/browser/picker/InputDialogContainer;->setFieldDateTimeValue(IIIIIIIII)V

    return-void
.end method
