.class public final Lm1/x;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ltb/w;

.field public e:Lm1/G;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lm1/y;

.field public h:I


# direct methods
.method public constructor <init>(Lm1/y;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lm1/x;->g:Lm1/y;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm1/x;->f:Ljava/lang/Object;

    iget p1, p0, Lm1/x;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm1/x;->h:I

    iget-object p1, p0, Lm1/x;->g:Lm1/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lm1/y;->a(Lm1/g;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
