.class public final Lm1/F;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Lm1/G;

.field public b:Ljava/io/File;

.field public c:Ljava/io/FileOutputStream;

.field public d:Ljava/io/FileOutputStream;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lm1/G;

.field public g:I


# direct methods
.method public constructor <init>(Lm1/G;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lm1/F;->f:Lm1/G;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm1/F;->e:Ljava/lang/Object;

    iget p1, p0, Lm1/F;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm1/F;->g:I

    iget-object p1, p0, Lm1/F;->f:Lm1/G;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lm1/G;->j(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
