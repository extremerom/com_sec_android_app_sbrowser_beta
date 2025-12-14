.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer$1",
        "LJ6/e;",
        "Lcom/google/android/material/tabs/a;",
        "tab",
        "Ldb/r;",
        "onTabSelected",
        "(Lcom/google/android/material/tabs/a;)V",
        "onTabUnselected",
        "onTabReselected",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/a;)V
    .locals 0

    const-string p0, "tab"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/a;)V
    .locals 9

    const-string v0, "tab"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/google/android/material/tabs/a;->b:I

    const-string v1, "onTabSelected tab: "

    const-string v2, "NewsFeedTabLayoutContainer"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;->updateTabTextStyle$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Lcom/google/android/material/tabs/a;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/a;)V
    .locals 7

    const-string v0, "tab"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;->updateTabTextStyle$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Lcom/google/android/material/tabs/a;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
