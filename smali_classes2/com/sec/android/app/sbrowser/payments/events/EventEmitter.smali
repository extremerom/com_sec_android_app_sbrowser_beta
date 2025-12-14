.class public Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;


# instance fields
.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventType;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->initializeListenerMap()V

    return-void
.end method

.method public static addListener(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->addListenerInternal(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V

    return-void
.end method

.method private addListenerInternal(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/events/Event;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/events/Event;-><init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emitInternal(Lcom/sec/android/app/sbrowser/payments/events/Event;)V

    return-void
.end method

.method public static emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/events/Event;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;-><init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emitInternal(Lcom/sec/android/app/sbrowser/payments/events/Event;)V

    return-void
.end method

.method public static emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/events/EventType;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->sInstance:Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/events/Event;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;-><init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emitInternal(Lcom/sec/android/app/sbrowser/payments/events/Event;)V

    return-void
.end method

.method private emitInternal(Lcom/sec/android/app/sbrowser/payments/events/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/events/Event;->getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/events/EventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/events/EventListener;->on(Lcom/sec/android/app/sbrowser/payments/events/Event;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initializeListenerMap()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->mListenerMap:Ljava/util/HashMap;

    return-void
.end method
