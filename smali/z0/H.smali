.class public final Lz0/H;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:Lz0/H;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/H;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, Lz0/H;->a:Lz0/H;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls0/f;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
