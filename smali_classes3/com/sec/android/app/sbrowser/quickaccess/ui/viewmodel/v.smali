.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
