.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SmartAntiTrackingState;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SmartAntiTrackingState;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SmartAntiTrackingState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockPopupsState;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockPopupsState;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockPopupsState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/BlockBackwardRedirections;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->c:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/a;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/AdBlockerState;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
