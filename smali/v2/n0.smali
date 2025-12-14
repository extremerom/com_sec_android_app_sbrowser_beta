.class public final Lv2/n0;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:LYc/d;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lv2/C0;

.field public g:I


# direct methods
.method public constructor <init>(Lv2/C0;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Lv2/n0;->f:Lv2/C0;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lv2/n0;->e:Ljava/lang/Object;

    iget p1, p0, Lv2/n0;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lv2/n0;->g:I

    iget-object p1, p0, Lv2/n0;->f:Lv2/C0;

    invoke-virtual {p1, p0}, Lv2/C0;->f(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
