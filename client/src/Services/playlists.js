import api from './api-config';

export const createPlaylist = async (data) => {
    const resp = await api.post('/playlists', { playlist: data })
    return resp.data
}

export const getAllPlaylists = async () => {
    const resp = await api.get('/playlists')
    return resp.data
}

export const getOnePlaylist = async (id) => {
    const resp = await api.get(`/playlists/${id}`)
    return resp.data
}

export const updatePlaylist = async (id, data) => {
    const resp = await api.put(`/playlists/${id}`, { playlist: data })
    return resp.data
}

export const destroyPlaylist = async (id) => {
    const resp = await api.delete(`/playlists/${id}`)
    return resp.data
}