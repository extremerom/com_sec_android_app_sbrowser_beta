.class public final Lcom/google/android/gms/internal/auth/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/t;


# static fields
.field public static final b:Lcom/google/android/gms/internal/auth/x0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/x0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/x0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/x0;->b:Lcom/google/android/gms/internal/auth/x0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/auth/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/auth/w;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth/w;-><init>(Lcom/google/android/gms/internal/auth/z0;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/Z;->b(Lcom/google/android/gms/internal/auth/t;)Lcom/google/android/gms/internal/auth/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/x0;->a:Lcom/google/android/gms/internal/auth/t;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/auth/y0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/x0;->a:Lcom/google/android/gms/internal/auth/t;

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/t;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/y0;

    return-object p0
.end method

.method public final bridge synthetic d()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/x0;->a()Lcom/google/android/gms/internal/auth/y0;

    move-result-object p0

    return-object p0
.end method
