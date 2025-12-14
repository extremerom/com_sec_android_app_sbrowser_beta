.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;->a(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->a(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
