.class public final synthetic Lcom/google/ar/core/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# static fields
.field public static final synthetic a:Lcom/google/ar/core/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ar/core/l;->a:Lcom/google/ar/core/l;

    return-void
.end method


# virtual methods
.method public final synthetic onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->a(Landroid/media/ImageReader;)V

    return-void
.end method
