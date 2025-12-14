.class public final synthetic Lca/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lca/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "it"

    const/4 v1, 0x0

    iget p0, p0, Lca/c;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    invoke-virtual {p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->destroyBridge()V

    return-void

    :pswitch_0
    check-cast p1, Ll/c;

    invoke-virtual {p1}, Ll/c;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Ll/c;->e:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p1, Ll/c;->e:Z

    iget-object p0, p1, Ll/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, v1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Ll/c;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj9/a;->w(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->a(Ljava/lang/Integer;)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/samsung/android/scloud/lib/setting/n;

    return-void

    :pswitch_6
    check-cast p1, Lcom/samsung/android/scloud/lib/setting/n;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handlePendingRequest: failed - policy was reloaded after sync request failure, "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LibSyncScheduleManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;->onSettingChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
