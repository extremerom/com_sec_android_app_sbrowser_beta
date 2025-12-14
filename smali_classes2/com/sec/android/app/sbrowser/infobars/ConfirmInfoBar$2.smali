.class Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

.field final synthetic val$infoBarLayout:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;->val$infoBarLayout:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;->val$infoBarLayout:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar;->applyInfoBarClickDelay(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBar$2;->val$infoBarLayout:Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
