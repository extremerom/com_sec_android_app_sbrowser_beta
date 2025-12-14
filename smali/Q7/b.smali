.class public final LQ7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/d;


# static fields
.field public static final synthetic a:LQ7/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LQ7/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQ7/b;->a:LQ7/b;

    return-void
.end method


# virtual methods
.method public c(LA7/c;)Ljava/lang/Object;
    .locals 1

    new-instance p0, LQ7/h;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, LQ7/h;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
