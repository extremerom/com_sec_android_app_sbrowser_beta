.class public interface abstract Lorg/chromium/components/autofill_public/IViewTypeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill_public/IViewTypeCallback$_Parcel;,
        Lorg/chromium/components/autofill_public/IViewTypeCallback$Stub;,
        Lorg/chromium/components/autofill_public/IViewTypeCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.components.autofill_public.IViewTypeCallback"


# virtual methods
.method public abstract onQueryFailed()V
.end method

.method public abstract onViewTypeAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill_public/ViewType;",
            ">;)V"
        }
    .end annotation
.end method
