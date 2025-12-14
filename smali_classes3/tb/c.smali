.class public abstract Ltb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAb/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field


# instance fields
.field private final isTopLevel:Z
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field

.field private final owner:Ljava/lang/Class;
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field

.field protected final receiver:Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field

.field private transient reflected:LAb/b;

.field private final signature:Ljava/lang/String;
    .annotation build Lkotlin/SinceKotlin;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ltb/b;->a:Ltb/b;

    sput-object v0, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/c;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Ltb/c;->owner:Ljava/lang/Class;

    iput-object p3, p0, Ltb/c;->name:Ljava/lang/String;

    iput-object p4, p0, Ltb/c;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Ltb/c;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltb/c;->getReflected()LAb/b;

    move-result-object p0

    invoke-interface {p0, p1}, LAb/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()LAb/b;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
    .end annotation

    iget-object v0, p0, Ltb/c;->reflected:LAb/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ltb/c;->computeReflected()LAb/b;

    move-result-object v0

    iput-object v0, p0, Ltb/c;->reflected:LAb/b;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()LAb/b;
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
    .end annotation

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltb/c;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()LAb/e;
    .locals 1

    iget-object v0, p0, Ltb/c;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Ltb/c;->isTopLevel:Z

    if-eqz p0, :cond_1

    sget-object p0, Ltb/x;->a:Ltb/y;

    invoke-virtual {p0, v0}, Ltb/y;->c(Ljava/lang/Class;)LAb/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ltb/x;->a:Ltb/y;

    invoke-virtual {p0, v0}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract getReflected()LAb/b;
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltb/c;->signature:Ljava/lang/String;

    return-object p0
.end method
