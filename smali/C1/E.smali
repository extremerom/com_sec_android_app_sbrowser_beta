.class public final LC1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNc/B;


# instance fields
.field public final synthetic a:LNc/B;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:LNc/B;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:LC1/u;

.field public final synthetic f:LC1/w;


# direct methods
.method public constructor <init>(LNc/B;Ljava/util/concurrent/atomic/AtomicReference;LNc/B;Ljava/lang/String;LC1/u;LC1/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LC1/E;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LC1/E;->c:LNc/B;

    iput-object p4, p0, LC1/E;->d:Ljava/lang/String;

    iput-object p5, p0, LC1/E;->e:LC1/u;

    iput-object p6, p0, LC1/E;->f:LC1/w;

    iput-object p1, p0, LC1/E;->a:LNc/B;

    return-void
.end method


# virtual methods
.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, LC1/E;->a:LNc/B;

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    return-object p0
.end method
