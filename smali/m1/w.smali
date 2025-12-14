.class public final Lm1/w;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lm1/G;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Ljava/lang/Object;

.field public e:Lm1/y;

.field public f:Ljava/util/Iterator;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lm1/G;

.field public i:I


# direct methods
.method public constructor <init>(Lm1/G;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lm1/w;->h:Lm1/G;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm1/w;->g:Ljava/lang/Object;

    iget p1, p0, Lm1/w;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm1/w;->i:I

    iget-object p1, p0, Lm1/w;->h:Lm1/G;

    invoke-virtual {p1, p0}, Lm1/G;->d(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
