.class public interface abstract Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buildBottomBarButton(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
.end method

.method public abstract doesIconFitToolbar(Landroid/content/Context;)Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getId()I
.end method

.method public abstract getPendingIntent()Landroid/app/PendingIntent;
.end method

.method public abstract setTintColor(I)V
.end method

.method public abstract shouldTint()Z
.end method

.method public abstract showOnToolbar()Z
.end method

.method public abstract update(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
