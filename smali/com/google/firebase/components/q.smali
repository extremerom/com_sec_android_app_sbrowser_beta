.class public final Lcom/google/firebase/components/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC7/a;


# static fields
.field public static final c:LA9/b;

.field public static final d:Lcom/google/firebase/components/f;


# instance fields
.field public a:LA9/b;

.field public volatile b:LC7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA9/b;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LA9/b;-><init>(I)V

    sput-object v0, Lcom/google/firebase/components/q;->c:LA9/b;

    new-instance v0, Lcom/google/firebase/components/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/f;-><init>(I)V

    sput-object v0, Lcom/google/firebase/components/q;->d:Lcom/google/firebase/components/f;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/q;->b:LC7/a;

    invoke-interface {p0}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
