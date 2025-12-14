.class public final Ld2/c;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:LYc/a;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ld2/f;

.field public g:I


# direct methods
.method public constructor <init>(Ld2/f;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Ld2/c;->f:Ld2/f;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ld2/c;->e:Ljava/lang/Object;

    iget p1, p0, Ld2/c;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ld2/c;->g:I

    iget-object p1, p0, Ld2/c;->f:Ld2/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Ld2/f;->b(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
