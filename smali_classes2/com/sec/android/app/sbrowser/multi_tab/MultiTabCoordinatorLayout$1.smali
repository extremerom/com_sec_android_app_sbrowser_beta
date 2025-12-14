.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->generateAutoCloseUnusedTabsItemModel()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/appbar/model/AppBarModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Ld6/a;",
            ">;)V"
        }
    .end annotation

    const-string p1, "MultiTabCoordinatorLayout"

    const-string v0, "[onClick] launch auto close settings"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->p(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;Lcom/google/android/material/appbar/model/AppBarModel;)V

    return-void
.end method
