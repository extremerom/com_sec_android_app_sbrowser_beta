.class public Lcom/sec/android/app/sbrowser/payments/events/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;",
            ">;"
        }
    .end annotation
.end field

.field final mType:Lcom/sec/android/app/sbrowser/payments/events/EventType;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mType:Lcom/sec/android/app/sbrowser/payments/events/EventType;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mType:Lcom/sec/android/app/sbrowser/payments/events/EventType;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/events/EventType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/events/EventType;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mType:Lcom/sec/android/app/sbrowser/payments/events/EventType;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getDetails()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    return-object p0
.end method

.method public getDetailsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mDetailsList:Ljava/util/List;

    return-object p0
.end method

.method public getType()Lcom/sec/android/app/sbrowser/payments/events/EventType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/events/Event;->mType:Lcom/sec/android/app/sbrowser/payments/events/EventType;

    return-object p0
.end method
