.class public final synthetic Lcom/sec/android/app/sbrowser/intent_blocker/b;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/intent_blocker/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;->b(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifier;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->deleteOldHistoryByLimitedCount()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;->a(Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerDbHelper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
