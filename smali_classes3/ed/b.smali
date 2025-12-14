.class public abstract Led/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Led/a;


# instance fields
.field public final a:Led/d;

.field public final b:Lu5/d;

.field public final c:LP7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Led/a;

    new-instance v15, Led/d;

    const-string v11, "type"

    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "    "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Led/d;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZZ)V

    sget-object v1, Lgd/a;->a:Lu5/d;

    invoke-direct {v0, v15, v1}, Led/b;-><init>(Led/d;Lu5/d;)V

    sput-object v0, Led/b;->d:Led/a;

    return-void
.end method

.method public constructor <init>(Led/d;Lu5/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/b;->a:Led/d;

    iput-object p2, p0, Led/b;->b:Lu5/d;

    new-instance p1, LP7/c;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, LP7/c;-><init>(I)V

    iput-object p1, p0, Led/b;->c:LP7/c;

    return-void
.end method
