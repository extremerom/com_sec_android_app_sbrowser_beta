.class Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->addTabManagerEventListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$5;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$5;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    return-void
.end method
