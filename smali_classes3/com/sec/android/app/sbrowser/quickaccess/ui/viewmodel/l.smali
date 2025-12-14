.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

.field public final synthetic b:Landroidx/lifecycle/S;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;->b:Landroidx/lifecycle/S;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;->b:Landroidx/lifecycle/S;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method
