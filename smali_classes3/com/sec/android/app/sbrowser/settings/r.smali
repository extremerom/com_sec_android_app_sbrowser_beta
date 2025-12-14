.class public final synthetic Lcom/sec/android/app/sbrowser/settings/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/r;->a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/r;->a:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->k(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Ljava/lang/Boolean;)V

    return-void
.end method
