.class public final synthetic Lorg/chromium/ui/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/supplier/Supplier;


# instance fields
.field public final synthetic a:Lorg/chromium/ui/InsetObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/ui/InsetObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/base/a;->a:Lorg/chromium/ui/InsetObserver;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/a;->a:Lorg/chromium/ui/InsetObserver;

    invoke-static {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->g(Lorg/chromium/ui/InsetObserver;)Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    return-object p0
.end method
