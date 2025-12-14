.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/A;->c:Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method
