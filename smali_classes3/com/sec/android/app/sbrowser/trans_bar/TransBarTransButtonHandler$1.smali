.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->initializeTransBtn(Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;->val$callback:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;->val$callback:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;->onTransBtnClick()V

    return-void
.end method
