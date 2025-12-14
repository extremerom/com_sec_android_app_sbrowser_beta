.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->createNewTabAnim(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/common/main_view/NewTabAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$incognito:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->val$incognito:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->val$group:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisibleBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->getVisibleBottomMargin()I

    move-result p0

    return p0
.end method

.method public getVisibleTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public isBitmapToolbarHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isBitmapToolbarHidden()Z

    move-result p0

    return p0
.end method

.method public onNewTabAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->val$incognito:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$3;->val$group:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->s(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;ZLjava/lang/String;)V

    return-void
.end method
