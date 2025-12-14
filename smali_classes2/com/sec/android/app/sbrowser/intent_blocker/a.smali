.class public final synthetic Lcom/sec/android/app/sbrowser/intent_blocker/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/AbstractCollection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/AbstractCollection;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/intent_blocker/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/intent_blocker/a;->b:Ljava/util/AbstractCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/intent_blocker/a;->b:Ljava/util/AbstractCollection;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerConfig;->a(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
