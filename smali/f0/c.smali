.class public Lf0/c;
.super Lfb/f;
.source "SourceFile"


# static fields
.field public static final c:Lf0/c;


# instance fields
.field public final a:Lf0/l;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf0/c;

    sget-object v1, Lf0/l;->e:Lf0/l;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf0/c;-><init>(Lf0/l;I)V

    sput-object v0, Lf0/c;->c:Lf0/c;

    return-void
.end method

.method public constructor <init>(Lf0/l;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/c;->a:Lf0/l;

    iput p2, p0, Lf0/c;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lg0/a;)Lf0/c;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lf0/c;->a:Lf0/l;

    invoke-virtual {v2, p1, v1, p2, v0}, Lf0/l;->u(Ljava/lang/Object;ILjava/lang/Object;I)LMd/c;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Lf0/c;

    iget-object v0, p1, LMd/c;->c:Ljava/lang/Object;

    check-cast v0, Lf0/l;

    iget p0, p0, Lf0/c;->b:I

    iget p1, p1, LMd/c;->b:I

    add-int/2addr p0, p1

    invoke-direct {p2, v0, p0}, Lf0/c;-><init>(Lf0/l;I)V

    return-object p2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lf0/c;->a:Lf0/l;

    invoke-virtual {p0, v1, v0, p1}, Lf0/l;->d(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lf0/c;->a:Lf0/l;

    invoke-virtual {p0, v1, v0, p1}, Lf0/l;->g(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
