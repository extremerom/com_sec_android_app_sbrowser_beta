.class Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->setOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2309"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$8;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    return-void
.end method
