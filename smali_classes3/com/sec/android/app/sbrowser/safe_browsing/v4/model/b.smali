.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;->b:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->e(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->d(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
