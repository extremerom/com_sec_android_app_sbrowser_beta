.class public abstract Ld1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS3/F;

.field public static final b:LS3/F;

.field public static final c:LS3/F;

.field public static final d:LS3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LS3/F;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LS3/F;-><init>(Ld1/e;Z)V

    sput-object v0, Ld1/f;->a:LS3/F;

    new-instance v0, LS3/F;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LS3/F;-><init>(Ld1/e;Z)V

    sput-object v0, Ld1/f;->b:LS3/F;

    new-instance v0, LS3/F;

    sget-object v1, Ld1/e;->a:Ld1/e;

    invoke-direct {v0, v1, v2}, LS3/F;-><init>(Ld1/e;Z)V

    sput-object v0, Ld1/f;->c:LS3/F;

    new-instance v0, LS3/F;

    invoke-direct {v0, v1, v3}, LS3/F;-><init>(Ld1/e;Z)V

    sput-object v0, Ld1/f;->d:LS3/F;

    return-void
.end method
