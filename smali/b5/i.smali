.class public final Lb5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lb5/i;


# instance fields
.field public final a:Lc5/a;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb5/i;

    invoke-direct {v2, v0, v1}, Lb5/i;-><init>(Lc5/a;Landroid/os/Looper;)V

    sput-object v2, Lb5/i;->c:Lb5/i;

    return-void
.end method

.method public constructor <init>(Lc5/a;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/i;->a:Lc5/a;

    iput-object p2, p0, Lb5/i;->b:Landroid/os/Looper;

    return-void
.end method
