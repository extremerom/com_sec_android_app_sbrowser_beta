.class public abstract Lkb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkb/e;

.field public static b:Lkb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkb/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lkb/e;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lkb/f;->a:Lkb/e;

    return-void
.end method
