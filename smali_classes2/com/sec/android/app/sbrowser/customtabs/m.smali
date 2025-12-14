.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/m;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/m;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;Ljava/lang/Boolean;)V

    return-void
.end method
