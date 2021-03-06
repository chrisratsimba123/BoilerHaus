import api from './api-config';

export const createArtist = async (data) => {
    const resp = await api.post('/artists', { artist: data })
    return resp.data
}

export const getAllArtists = async () => {
    const resp = await api.get('/artists')
    return resp.data
}

export const getOneArtist = async (id) => {
    const resp = await api.get(`/artists/${id}`)
    return resp.data
}

export const updateArtist = async (id, data) => {
    const resp = await api.put(`/artists/${id}`, { artist: data })
    return resp.data
}

export const destroyArtist = async (id) => {
    const resp = await api.delete(`/artists/${id}`)
    return resp.data
}